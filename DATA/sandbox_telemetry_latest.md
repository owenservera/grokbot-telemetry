# sandbox_telemetry_parse — 2026-11-23 20:42:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1980323 lines=4391
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4376 |
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
| `chromeBrowserPssKb` | {'int': 4376} |
| `chromeGpuPssKb` | {'int': 4376} |
| `chromeOtherPssKb` | {'int': 4376} |
| `chromeProcesses` | {'int': 4376} |
| `chromeProfiles` | {'int': 4376} |
| `chromeRendererMaxPssKb` | {'int': 4376} |
| `chromeRendererPssKb` | {'int': 4376} |
| `chromeRenderers` | {'int': 4376} |
| `chromeTabs` | {'int': 4376} |
| `chromeTabsProbedProfiles` | {'int': 4376} |
| `chromeUtilityPssKb` | {'int': 4376} |
| `desktopPssKb` | {'int': 4376} |
| `hostPssKb` | {'int': 4376} |
| `kind` | {'str': 4376} |
| `memAvailableKb` | {'int': 4376} |
| `memTotalKb` | {'int': 4376} |
| `otherPssKb` | {'int': 4376} |
| `processes` | {'int': 4376} |
| `pssFallbackProcesses` | {'int': 4376} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
