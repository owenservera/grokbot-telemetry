# sandbox_telemetry_parse — 2026-11-17 20:19:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=520983 lines=1158
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1151 |
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
| `chromeBrowserPssKb` | {'int': 1151} |
| `chromeGpuPssKb` | {'int': 1151} |
| `chromeOtherPssKb` | {'int': 1151} |
| `chromeProcesses` | {'int': 1151} |
| `chromeProfiles` | {'int': 1151} |
| `chromeRendererMaxPssKb` | {'int': 1151} |
| `chromeRendererPssKb` | {'int': 1151} |
| `chromeRenderers` | {'int': 1151} |
| `chromeTabs` | {'int': 1151} |
| `chromeTabsProbedProfiles` | {'int': 1151} |
| `chromeUtilityPssKb` | {'int': 1151} |
| `desktopPssKb` | {'int': 1151} |
| `hostPssKb` | {'int': 1151} |
| `kind` | {'str': 1151} |
| `memAvailableKb` | {'int': 1151} |
| `memTotalKb` | {'int': 1151} |
| `otherPssKb` | {'int': 1151} |
| `processes` | {'int': 1151} |
| `pssFallbackProcesses` | {'int': 1151} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
