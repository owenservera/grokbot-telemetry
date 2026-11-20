# sandbox_telemetry_parse — 2026-11-20 23:45:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1867907 lines=4141
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4128 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4128} |
| `chromeGpuPssKb` | {'int': 4128} |
| `chromeOtherPssKb` | {'int': 4128} |
| `chromeProcesses` | {'int': 4128} |
| `chromeProfiles` | {'int': 4128} |
| `chromeRendererMaxPssKb` | {'int': 4128} |
| `chromeRendererPssKb` | {'int': 4128} |
| `chromeRenderers` | {'int': 4128} |
| `chromeTabs` | {'int': 4128} |
| `chromeTabsProbedProfiles` | {'int': 4128} |
| `chromeUtilityPssKb` | {'int': 4128} |
| `desktopPssKb` | {'int': 4128} |
| `hostPssKb` | {'int': 4128} |
| `kind` | {'str': 4128} |
| `memAvailableKb` | {'int': 4128} |
| `memTotalKb` | {'int': 4128} |
| `otherPssKb` | {'int': 4128} |
| `processes` | {'int': 4128} |
| `pssFallbackProcesses` | {'int': 4128} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
