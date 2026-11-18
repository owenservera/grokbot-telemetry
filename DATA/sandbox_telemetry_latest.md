# sandbox_telemetry_parse — 2026-11-18 21:31:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=984263 lines=2184
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2175 |
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
| `chromeBrowserPssKb` | {'int': 2175} |
| `chromeGpuPssKb` | {'int': 2175} |
| `chromeOtherPssKb` | {'int': 2175} |
| `chromeProcesses` | {'int': 2175} |
| `chromeProfiles` | {'int': 2175} |
| `chromeRendererMaxPssKb` | {'int': 2175} |
| `chromeRendererPssKb` | {'int': 2175} |
| `chromeRenderers` | {'int': 2175} |
| `chromeTabs` | {'int': 2175} |
| `chromeTabsProbedProfiles` | {'int': 2175} |
| `chromeUtilityPssKb` | {'int': 2175} |
| `desktopPssKb` | {'int': 2175} |
| `hostPssKb` | {'int': 2175} |
| `kind` | {'str': 2175} |
| `memAvailableKb` | {'int': 2175} |
| `memTotalKb` | {'int': 2175} |
| `otherPssKb` | {'int': 2175} |
| `processes` | {'int': 2175} |
| `pssFallbackProcesses` | {'int': 2175} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
