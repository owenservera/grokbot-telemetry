# sandbox_telemetry_parse — 2026-11-10 16:00:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1211855 lines=2686
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2677 |
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
| `chromeBrowserPssKb` | {'int': 2677} |
| `chromeGpuPssKb` | {'int': 2677} |
| `chromeOtherPssKb` | {'int': 2677} |
| `chromeProcesses` | {'int': 2677} |
| `chromeProfiles` | {'int': 2677} |
| `chromeRendererMaxPssKb` | {'int': 2677} |
| `chromeRendererPssKb` | {'int': 2677} |
| `chromeRenderers` | {'int': 2677} |
| `chromeTabs` | {'int': 2677} |
| `chromeTabsProbedProfiles` | {'int': 2677} |
| `chromeUtilityPssKb` | {'int': 2677} |
| `desktopPssKb` | {'int': 2677} |
| `hostPssKb` | {'int': 2677} |
| `kind` | {'str': 2677} |
| `memAvailableKb` | {'int': 2677} |
| `memTotalKb` | {'int': 2677} |
| `otherPssKb` | {'int': 2677} |
| `processes` | {'int': 2677} |
| `pssFallbackProcesses` | {'int': 2677} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
