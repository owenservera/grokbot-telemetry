# sandbox_telemetry_parse — 2026-10-14 06:54:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=150886 lines=338
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 333 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 333} |
| `chromeGpuPssKb` | {'int': 333} |
| `chromeOtherPssKb` | {'int': 333} |
| `chromeProcesses` | {'int': 333} |
| `chromeProfiles` | {'int': 333} |
| `chromeRendererMaxPssKb` | {'int': 333} |
| `chromeRendererPssKb` | {'int': 333} |
| `chromeRenderers` | {'int': 333} |
| `chromeTabs` | {'int': 333} |
| `chromeTabsProbedProfiles` | {'int': 333} |
| `chromeUtilityPssKb` | {'int': 333} |
| `desktopPssKb` | {'int': 333} |
| `hostPssKb` | {'int': 333} |
| `kind` | {'str': 333} |
| `memAvailableKb` | {'int': 333} |
| `memTotalKb` | {'int': 333} |
| `otherPssKb` | {'int': 333} |
| `processes` | {'int': 333} |
| `pssFallbackProcesses` | {'int': 333} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
