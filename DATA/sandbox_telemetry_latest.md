# sandbox_telemetry_parse — 2026-10-06 02:19:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=93674 lines=210
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 205 |
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
| `chromeBrowserPssKb` | {'int': 205} |
| `chromeGpuPssKb` | {'int': 205} |
| `chromeOtherPssKb` | {'int': 205} |
| `chromeProcesses` | {'int': 205} |
| `chromeProfiles` | {'int': 205} |
| `chromeRendererMaxPssKb` | {'int': 205} |
| `chromeRendererPssKb` | {'int': 205} |
| `chromeRenderers` | {'int': 205} |
| `chromeTabs` | {'int': 205} |
| `chromeTabsProbedProfiles` | {'int': 205} |
| `chromeUtilityPssKb` | {'int': 205} |
| `desktopPssKb` | {'int': 205} |
| `hostPssKb` | {'int': 205} |
| `kind` | {'str': 205} |
| `memAvailableKb` | {'int': 205} |
| `memTotalKb` | {'int': 205} |
| `otherPssKb` | {'int': 205} |
| `processes` | {'int': 205} |
| `pssFallbackProcesses` | {'int': 205} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
