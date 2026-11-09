# sandbox_telemetry_parse — 2026-11-09 07:52:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=560676 lines=1247
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1238 |
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
| `chromeBrowserPssKb` | {'int': 1238} |
| `chromeGpuPssKb` | {'int': 1238} |
| `chromeOtherPssKb` | {'int': 1238} |
| `chromeProcesses` | {'int': 1238} |
| `chromeProfiles` | {'int': 1238} |
| `chromeRendererMaxPssKb` | {'int': 1238} |
| `chromeRendererPssKb` | {'int': 1238} |
| `chromeRenderers` | {'int': 1238} |
| `chromeTabs` | {'int': 1238} |
| `chromeTabsProbedProfiles` | {'int': 1238} |
| `chromeUtilityPssKb` | {'int': 1238} |
| `desktopPssKb` | {'int': 1238} |
| `hostPssKb` | {'int': 1238} |
| `kind` | {'str': 1238} |
| `memAvailableKb` | {'int': 1238} |
| `memTotalKb` | {'int': 1238} |
| `otherPssKb` | {'int': 1238} |
| `processes` | {'int': 1238} |
| `pssFallbackProcesses` | {'int': 1238} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
