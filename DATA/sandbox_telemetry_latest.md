# sandbox_telemetry_parse — 2026-11-12 05:08:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1980702 lines=4385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4376 |
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
