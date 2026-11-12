# sandbox_telemetry_parse — 2026-11-12 23:06:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2365467 lines=5235
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5226 |
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
| `chromeBrowserPssKb` | {'int': 5226} |
| `chromeGpuPssKb` | {'int': 5226} |
| `chromeOtherPssKb` | {'int': 5226} |
| `chromeProcesses` | {'int': 5226} |
| `chromeProfiles` | {'int': 5226} |
| `chromeRendererMaxPssKb` | {'int': 5226} |
| `chromeRendererPssKb` | {'int': 5226} |
| `chromeRenderers` | {'int': 5226} |
| `chromeTabs` | {'int': 5226} |
| `chromeTabsProbedProfiles` | {'int': 5226} |
| `chromeUtilityPssKb` | {'int': 5226} |
| `desktopPssKb` | {'int': 5226} |
| `hostPssKb` | {'int': 5226} |
| `kind` | {'str': 5226} |
| `memAvailableKb` | {'int': 5226} |
| `memTotalKb` | {'int': 5226} |
| `otherPssKb` | {'int': 5226} |
| `processes` | {'int': 5226} |
| `pssFallbackProcesses` | {'int': 5226} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
