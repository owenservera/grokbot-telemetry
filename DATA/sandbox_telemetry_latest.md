# sandbox_telemetry_parse — 2026-11-12 06:54:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2013255 lines=4457
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4448 |
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
| `chromeBrowserPssKb` | {'int': 4448} |
| `chromeGpuPssKb` | {'int': 4448} |
| `chromeOtherPssKb` | {'int': 4448} |
| `chromeProcesses` | {'int': 4448} |
| `chromeProfiles` | {'int': 4448} |
| `chromeRendererMaxPssKb` | {'int': 4448} |
| `chromeRendererPssKb` | {'int': 4448} |
| `chromeRenderers` | {'int': 4448} |
| `chromeTabs` | {'int': 4448} |
| `chromeTabsProbedProfiles` | {'int': 4448} |
| `chromeUtilityPssKb` | {'int': 4448} |
| `desktopPssKb` | {'int': 4448} |
| `hostPssKb` | {'int': 4448} |
| `kind` | {'str': 4448} |
| `memAvailableKb` | {'int': 4448} |
| `memTotalKb` | {'int': 4448} |
| `otherPssKb` | {'int': 4448} |
| `processes` | {'int': 4448} |
| `pssFallbackProcesses` | {'int': 4448} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
