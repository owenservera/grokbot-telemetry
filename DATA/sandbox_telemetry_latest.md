# sandbox_telemetry_parse — 2026-10-26 16:19:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=15783 lines=39
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 34 |
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
| `chromeBrowserPssKb` | {'int': 34} |
| `chromeGpuPssKb` | {'int': 34} |
| `chromeOtherPssKb` | {'int': 34} |
| `chromeProcesses` | {'int': 34} |
| `chromeProfiles` | {'int': 34} |
| `chromeRendererMaxPssKb` | {'int': 34} |
| `chromeRendererPssKb` | {'int': 34} |
| `chromeRenderers` | {'int': 34} |
| `chromeTabs` | {'int': 34} |
| `chromeTabsProbedProfiles` | {'int': 34} |
| `chromeUtilityPssKb` | {'int': 34} |
| `desktopPssKb` | {'int': 34} |
| `hostPssKb` | {'int': 34} |
| `kind` | {'str': 34} |
| `memAvailableKb` | {'int': 34} |
| `memTotalKb` | {'int': 34} |
| `otherPssKb` | {'int': 34} |
| `processes` | {'int': 34} |
| `pssFallbackProcesses` | {'int': 34} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
