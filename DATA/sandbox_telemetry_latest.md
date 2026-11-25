# sandbox_telemetry_parse — 2026-11-25 19:25:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2891280 lines=6405
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6390 |
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
| `chromeBrowserPssKb` | {'int': 6390} |
| `chromeGpuPssKb` | {'int': 6390} |
| `chromeOtherPssKb` | {'int': 6390} |
| `chromeProcesses` | {'int': 6390} |
| `chromeProfiles` | {'int': 6390} |
| `chromeRendererMaxPssKb` | {'int': 6390} |
| `chromeRendererPssKb` | {'int': 6390} |
| `chromeRenderers` | {'int': 6390} |
| `chromeTabs` | {'int': 6390} |
| `chromeTabsProbedProfiles` | {'int': 6390} |
| `chromeUtilityPssKb` | {'int': 6390} |
| `desktopPssKb` | {'int': 6390} |
| `hostPssKb` | {'int': 6390} |
| `kind` | {'str': 6390} |
| `memAvailableKb` | {'int': 6390} |
| `memTotalKb` | {'int': 6390} |
| `otherPssKb` | {'int': 6390} |
| `processes` | {'int': 6390} |
| `pssFallbackProcesses` | {'int': 6390} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
