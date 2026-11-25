# sandbox_telemetry_parse — 2026-11-25 15:26:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2810335 lines=6226
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6211 |
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
| `chromeBrowserPssKb` | {'int': 6211} |
| `chromeGpuPssKb` | {'int': 6211} |
| `chromeOtherPssKb` | {'int': 6211} |
| `chromeProcesses` | {'int': 6211} |
| `chromeProfiles` | {'int': 6211} |
| `chromeRendererMaxPssKb` | {'int': 6211} |
| `chromeRendererPssKb` | {'int': 6211} |
| `chromeRenderers` | {'int': 6211} |
| `chromeTabs` | {'int': 6211} |
| `chromeTabsProbedProfiles` | {'int': 6211} |
| `chromeUtilityPssKb` | {'int': 6211} |
| `desktopPssKb` | {'int': 6211} |
| `hostPssKb` | {'int': 6211} |
| `kind` | {'str': 6211} |
| `memAvailableKb` | {'int': 6211} |
| `memTotalKb` | {'int': 6211} |
| `otherPssKb` | {'int': 6211} |
| `processes` | {'int': 6211} |
| `pssFallbackProcesses` | {'int': 6211} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
