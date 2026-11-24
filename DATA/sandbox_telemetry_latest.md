# sandbox_telemetry_parse — 2026-11-24 01:29:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2075341 lines=4601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4586 |
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
| `chromeBrowserPssKb` | {'int': 4586} |
| `chromeGpuPssKb` | {'int': 4586} |
| `chromeOtherPssKb` | {'int': 4586} |
| `chromeProcesses` | {'int': 4586} |
| `chromeProfiles` | {'int': 4586} |
| `chromeRendererMaxPssKb` | {'int': 4586} |
| `chromeRendererPssKb` | {'int': 4586} |
| `chromeRenderers` | {'int': 4586} |
| `chromeTabs` | {'int': 4586} |
| `chromeTabsProbedProfiles` | {'int': 4586} |
| `chromeUtilityPssKb` | {'int': 4586} |
| `desktopPssKb` | {'int': 4586} |
| `hostPssKb` | {'int': 4586} |
| `kind` | {'str': 4586} |
| `memAvailableKb` | {'int': 4586} |
| `memTotalKb` | {'int': 4586} |
| `otherPssKb` | {'int': 4586} |
| `processes` | {'int': 4586} |
| `pssFallbackProcesses` | {'int': 4586} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
