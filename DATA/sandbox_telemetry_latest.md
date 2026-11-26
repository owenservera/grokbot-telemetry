# sandbox_telemetry_parse — 2026-11-27 00:19:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=151702 lines=342
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 334 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 334} |
| `chromeGpuPssKb` | {'int': 334} |
| `chromeOtherPssKb` | {'int': 334} |
| `chromeProcesses` | {'int': 334} |
| `chromeProfiles` | {'int': 334} |
| `chromeRendererMaxPssKb` | {'int': 334} |
| `chromeRendererPssKb` | {'int': 334} |
| `chromeRenderers` | {'int': 334} |
| `chromeTabs` | {'int': 334} |
| `chromeTabsProbedProfiles` | {'int': 334} |
| `chromeUtilityPssKb` | {'int': 334} |
| `desktopPssKb` | {'int': 334} |
| `hostPssKb` | {'int': 334} |
| `kind` | {'str': 334} |
| `memAvailableKb` | {'int': 334} |
| `memTotalKb` | {'int': 334} |
| `otherPssKb` | {'int': 334} |
| `processes` | {'int': 334} |
| `pssFallbackProcesses` | {'int': 334} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
