# sandbox_telemetry_parse — 2026-11-24 16:51:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2364347 lines=5240
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5225 |
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
| `chromeBrowserPssKb` | {'int': 5225} |
| `chromeGpuPssKb` | {'int': 5225} |
| `chromeOtherPssKb` | {'int': 5225} |
| `chromeProcesses` | {'int': 5225} |
| `chromeProfiles` | {'int': 5225} |
| `chromeRendererMaxPssKb` | {'int': 5225} |
| `chromeRendererPssKb` | {'int': 5225} |
| `chromeRenderers` | {'int': 5225} |
| `chromeTabs` | {'int': 5225} |
| `chromeTabsProbedProfiles` | {'int': 5225} |
| `chromeUtilityPssKb` | {'int': 5225} |
| `desktopPssKb` | {'int': 5225} |
| `hostPssKb` | {'int': 5225} |
| `kind` | {'str': 5225} |
| `memAvailableKb` | {'int': 5225} |
| `memTotalKb` | {'int': 5225} |
| `otherPssKb` | {'int': 5225} |
| `processes` | {'int': 5225} |
| `pssFallbackProcesses` | {'int': 5225} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
