# sandbox_telemetry_parse — 2026-10-26 18:48:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=80562 lines=182
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 177 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 177} |
| `chromeGpuPssKb` | {'int': 177} |
| `chromeOtherPssKb` | {'int': 177} |
| `chromeProcesses` | {'int': 177} |
| `chromeProfiles` | {'int': 177} |
| `chromeRendererMaxPssKb` | {'int': 177} |
| `chromeRendererPssKb` | {'int': 177} |
| `chromeRenderers` | {'int': 177} |
| `chromeTabs` | {'int': 177} |
| `chromeTabsProbedProfiles` | {'int': 177} |
| `chromeUtilityPssKb` | {'int': 177} |
| `desktopPssKb` | {'int': 177} |
| `hostPssKb` | {'int': 177} |
| `kind` | {'str': 177} |
| `memAvailableKb` | {'int': 177} |
| `memTotalKb` | {'int': 177} |
| `otherPssKb` | {'int': 177} |
| `processes` | {'int': 177} |
| `pssFallbackProcesses` | {'int': 177} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
