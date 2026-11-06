# sandbox_telemetry_parse — 2026-11-06 13:32:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=30394 lines=73
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 66 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 66} |
| `chromeGpuPssKb` | {'int': 66} |
| `chromeOtherPssKb` | {'int': 66} |
| `chromeProcesses` | {'int': 66} |
| `chromeProfiles` | {'int': 66} |
| `chromeRendererMaxPssKb` | {'int': 66} |
| `chromeRendererPssKb` | {'int': 66} |
| `chromeRenderers` | {'int': 66} |
| `chromeTabs` | {'int': 66} |
| `chromeTabsProbedProfiles` | {'int': 66} |
| `chromeUtilityPssKb` | {'int': 66} |
| `desktopPssKb` | {'int': 66} |
| `hostPssKb` | {'int': 66} |
| `kind` | {'str': 66} |
| `memAvailableKb` | {'int': 66} |
| `memTotalKb` | {'int': 66} |
| `otherPssKb` | {'int': 66} |
| `processes` | {'int': 66} |
| `pssFallbackProcesses` | {'int': 66} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
