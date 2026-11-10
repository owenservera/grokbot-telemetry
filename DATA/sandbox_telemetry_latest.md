# sandbox_telemetry_parse — 2026-11-10 14:01:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1170670 lines=2595
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2586 |
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
| `chromeBrowserPssKb` | {'int': 2586} |
| `chromeGpuPssKb` | {'int': 2586} |
| `chromeOtherPssKb` | {'int': 2586} |
| `chromeProcesses` | {'int': 2586} |
| `chromeProfiles` | {'int': 2586} |
| `chromeRendererMaxPssKb` | {'int': 2586} |
| `chromeRendererPssKb` | {'int': 2586} |
| `chromeRenderers` | {'int': 2586} |
| `chromeTabs` | {'int': 2586} |
| `chromeTabsProbedProfiles` | {'int': 2586} |
| `chromeUtilityPssKb` | {'int': 2586} |
| `desktopPssKb` | {'int': 2586} |
| `hostPssKb` | {'int': 2586} |
| `kind` | {'str': 2586} |
| `memAvailableKb` | {'int': 2586} |
| `memTotalKb` | {'int': 2586} |
| `otherPssKb` | {'int': 2586} |
| `processes` | {'int': 2586} |
| `pssFallbackProcesses` | {'int': 2586} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
