# sandbox_telemetry_parse — 2026-11-06 18:35:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=111557 lines=254
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 245 |
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
| `chromeBrowserPssKb` | {'int': 245} |
| `chromeGpuPssKb` | {'int': 245} |
| `chromeOtherPssKb` | {'int': 245} |
| `chromeProcesses` | {'int': 245} |
| `chromeProfiles` | {'int': 245} |
| `chromeRendererMaxPssKb` | {'int': 245} |
| `chromeRendererPssKb` | {'int': 245} |
| `chromeRenderers` | {'int': 245} |
| `chromeTabs` | {'int': 245} |
| `chromeTabsProbedProfiles` | {'int': 245} |
| `chromeUtilityPssKb` | {'int': 245} |
| `desktopPssKb` | {'int': 245} |
| `hostPssKb` | {'int': 245} |
| `kind` | {'str': 245} |
| `memAvailableKb` | {'int': 245} |
| `memTotalKb` | {'int': 245} |
| `otherPssKb` | {'int': 245} |
| `processes` | {'int': 245} |
| `pssFallbackProcesses` | {'int': 245} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
