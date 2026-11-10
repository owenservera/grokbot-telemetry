# sandbox_telemetry_parse — 2026-11-10 03:03:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=963432 lines=2137
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2128 |
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
| `chromeBrowserPssKb` | {'int': 2128} |
| `chromeGpuPssKb` | {'int': 2128} |
| `chromeOtherPssKb` | {'int': 2128} |
| `chromeProcesses` | {'int': 2128} |
| `chromeProfiles` | {'int': 2128} |
| `chromeRendererMaxPssKb` | {'int': 2128} |
| `chromeRendererPssKb` | {'int': 2128} |
| `chromeRenderers` | {'int': 2128} |
| `chromeTabs` | {'int': 2128} |
| `chromeTabsProbedProfiles` | {'int': 2128} |
| `chromeUtilityPssKb` | {'int': 2128} |
| `desktopPssKb` | {'int': 2128} |
| `hostPssKb` | {'int': 2128} |
| `kind` | {'str': 2128} |
| `memAvailableKb` | {'int': 2128} |
| `memTotalKb` | {'int': 2128} |
| `otherPssKb` | {'int': 2128} |
| `processes` | {'int': 2128} |
| `pssFallbackProcesses` | {'int': 2128} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
