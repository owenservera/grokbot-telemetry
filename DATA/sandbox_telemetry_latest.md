# sandbox_telemetry_parse — 2026-10-27 09:16:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=435328 lines=966
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 961 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 961} |
| `chromeGpuPssKb` | {'int': 961} |
| `chromeOtherPssKb` | {'int': 961} |
| `chromeProcesses` | {'int': 961} |
| `chromeProfiles` | {'int': 961} |
| `chromeRendererMaxPssKb` | {'int': 961} |
| `chromeRendererPssKb` | {'int': 961} |
| `chromeRenderers` | {'int': 961} |
| `chromeTabs` | {'int': 961} |
| `chromeTabsProbedProfiles` | {'int': 961} |
| `chromeUtilityPssKb` | {'int': 961} |
| `desktopPssKb` | {'int': 961} |
| `hostPssKb` | {'int': 961} |
| `kind` | {'str': 961} |
| `memAvailableKb` | {'int': 961} |
| `memTotalKb` | {'int': 961} |
| `otherPssKb` | {'int': 961} |
| `processes` | {'int': 961} |
| `pssFallbackProcesses` | {'int': 961} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
