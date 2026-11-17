# sandbox_telemetry_parse — 2026-11-17 21:51:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=556281 lines=1236
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1229 |
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
| `chromeBrowserPssKb` | {'int': 1229} |
| `chromeGpuPssKb` | {'int': 1229} |
| `chromeOtherPssKb` | {'int': 1229} |
| `chromeProcesses` | {'int': 1229} |
| `chromeProfiles` | {'int': 1229} |
| `chromeRendererMaxPssKb` | {'int': 1229} |
| `chromeRendererPssKb` | {'int': 1229} |
| `chromeRenderers` | {'int': 1229} |
| `chromeTabs` | {'int': 1229} |
| `chromeTabsProbedProfiles` | {'int': 1229} |
| `chromeUtilityPssKb` | {'int': 1229} |
| `desktopPssKb` | {'int': 1229} |
| `hostPssKb` | {'int': 1229} |
| `kind` | {'str': 1229} |
| `memAvailableKb` | {'int': 1229} |
| `memTotalKb` | {'int': 1229} |
| `otherPssKb` | {'int': 1229} |
| `processes` | {'int': 1229} |
| `pssFallbackProcesses` | {'int': 1229} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
