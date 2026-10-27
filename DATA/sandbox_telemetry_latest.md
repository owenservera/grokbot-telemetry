# sandbox_telemetry_parse — 2026-10-27 01:28:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=247719 lines=551
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 546 |
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
| `chromeBrowserPssKb` | {'int': 546} |
| `chromeGpuPssKb` | {'int': 546} |
| `chromeOtherPssKb` | {'int': 546} |
| `chromeProcesses` | {'int': 546} |
| `chromeProfiles` | {'int': 546} |
| `chromeRendererMaxPssKb` | {'int': 546} |
| `chromeRendererPssKb` | {'int': 546} |
| `chromeRenderers` | {'int': 546} |
| `chromeTabs` | {'int': 546} |
| `chromeTabsProbedProfiles` | {'int': 546} |
| `chromeUtilityPssKb` | {'int': 546} |
| `desktopPssKb` | {'int': 546} |
| `hostPssKb` | {'int': 546} |
| `kind` | {'str': 546} |
| `memAvailableKb` | {'int': 546} |
| `memTotalKb` | {'int': 546} |
| `otherPssKb` | {'int': 546} |
| `processes` | {'int': 546} |
| `pssFallbackProcesses` | {'int': 546} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
