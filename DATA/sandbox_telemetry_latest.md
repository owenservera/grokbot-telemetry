# sandbox_telemetry_parse — 2026-11-11 11:21:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1605047 lines=3555
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3546 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3546} |
| `chromeGpuPssKb` | {'int': 3546} |
| `chromeOtherPssKb` | {'int': 3546} |
| `chromeProcesses` | {'int': 3546} |
| `chromeProfiles` | {'int': 3546} |
| `chromeRendererMaxPssKb` | {'int': 3546} |
| `chromeRendererPssKb` | {'int': 3546} |
| `chromeRenderers` | {'int': 3546} |
| `chromeTabs` | {'int': 3546} |
| `chromeTabsProbedProfiles` | {'int': 3546} |
| `chromeUtilityPssKb` | {'int': 3546} |
| `desktopPssKb` | {'int': 3546} |
| `hostPssKb` | {'int': 3546} |
| `kind` | {'str': 3546} |
| `memAvailableKb` | {'int': 3546} |
| `memTotalKb` | {'int': 3546} |
| `otherPssKb` | {'int': 3546} |
| `processes` | {'int': 3546} |
| `pssFallbackProcesses` | {'int': 3546} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
