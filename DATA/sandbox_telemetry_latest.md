# sandbox_telemetry_parse — 2026-11-12 17:25:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2242324 lines=4963
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4954 |
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
| `chromeBrowserPssKb` | {'int': 4954} |
| `chromeGpuPssKb` | {'int': 4954} |
| `chromeOtherPssKb` | {'int': 4954} |
| `chromeProcesses` | {'int': 4954} |
| `chromeProfiles` | {'int': 4954} |
| `chromeRendererMaxPssKb` | {'int': 4954} |
| `chromeRendererPssKb` | {'int': 4954} |
| `chromeRenderers` | {'int': 4954} |
| `chromeTabs` | {'int': 4954} |
| `chromeTabsProbedProfiles` | {'int': 4954} |
| `chromeUtilityPssKb` | {'int': 4954} |
| `desktopPssKb` | {'int': 4954} |
| `hostPssKb` | {'int': 4954} |
| `kind` | {'str': 4954} |
| `memAvailableKb` | {'int': 4954} |
| `memTotalKb` | {'int': 4954} |
| `otherPssKb` | {'int': 4954} |
| `processes` | {'int': 4954} |
| `pssFallbackProcesses` | {'int': 4954} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
