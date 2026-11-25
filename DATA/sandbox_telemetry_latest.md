# sandbox_telemetry_parse — 2026-11-25 05:40:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2613159 lines=5790
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5775 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5775} |
| `chromeGpuPssKb` | {'int': 5775} |
| `chromeOtherPssKb` | {'int': 5775} |
| `chromeProcesses` | {'int': 5775} |
| `chromeProfiles` | {'int': 5775} |
| `chromeRendererMaxPssKb` | {'int': 5775} |
| `chromeRendererPssKb` | {'int': 5775} |
| `chromeRenderers` | {'int': 5775} |
| `chromeTabs` | {'int': 5775} |
| `chromeTabsProbedProfiles` | {'int': 5775} |
| `chromeUtilityPssKb` | {'int': 5775} |
| `desktopPssKb` | {'int': 5775} |
| `hostPssKb` | {'int': 5775} |
| `kind` | {'str': 5775} |
| `memAvailableKb` | {'int': 5775} |
| `memTotalKb` | {'int': 5775} |
| `otherPssKb` | {'int': 5775} |
| `processes` | {'int': 5775} |
| `pssFallbackProcesses` | {'int': 5775} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
