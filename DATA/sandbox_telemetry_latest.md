# sandbox_telemetry_parse — 2026-11-24 14:06:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2313650 lines=5128
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5113 |
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
| `chromeBrowserPssKb` | {'int': 5113} |
| `chromeGpuPssKb` | {'int': 5113} |
| `chromeOtherPssKb` | {'int': 5113} |
| `chromeProcesses` | {'int': 5113} |
| `chromeProfiles` | {'int': 5113} |
| `chromeRendererMaxPssKb` | {'int': 5113} |
| `chromeRendererPssKb` | {'int': 5113} |
| `chromeRenderers` | {'int': 5113} |
| `chromeTabs` | {'int': 5113} |
| `chromeTabsProbedProfiles` | {'int': 5113} |
| `chromeUtilityPssKb` | {'int': 5113} |
| `desktopPssKb` | {'int': 5113} |
| `hostPssKb` | {'int': 5113} |
| `kind` | {'str': 5113} |
| `memAvailableKb` | {'int': 5113} |
| `memTotalKb` | {'int': 5113} |
| `otherPssKb` | {'int': 5113} |
| `processes` | {'int': 5113} |
| `pssFallbackProcesses` | {'int': 5113} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
