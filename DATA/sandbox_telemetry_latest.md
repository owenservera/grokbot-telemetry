# sandbox_telemetry_parse — 2026-11-20 07:35:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1622589 lines=3597
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3586 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3586} |
| `chromeGpuPssKb` | {'int': 3586} |
| `chromeOtherPssKb` | {'int': 3586} |
| `chromeProcesses` | {'int': 3586} |
| `chromeProfiles` | {'int': 3586} |
| `chromeRendererMaxPssKb` | {'int': 3586} |
| `chromeRendererPssKb` | {'int': 3586} |
| `chromeRenderers` | {'int': 3586} |
| `chromeTabs` | {'int': 3586} |
| `chromeTabsProbedProfiles` | {'int': 3586} |
| `chromeUtilityPssKb` | {'int': 3586} |
| `desktopPssKb` | {'int': 3586} |
| `hostPssKb` | {'int': 3586} |
| `kind` | {'str': 3586} |
| `memAvailableKb` | {'int': 3586} |
| `memTotalKb` | {'int': 3586} |
| `otherPssKb` | {'int': 3586} |
| `processes` | {'int': 3586} |
| `pssFallbackProcesses` | {'int': 3586} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
