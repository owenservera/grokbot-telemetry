# sandbox_telemetry_parse — 2026-10-26 19:49:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=106383 lines=239
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 234 |
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
| `chromeBrowserPssKb` | {'int': 234} |
| `chromeGpuPssKb` | {'int': 234} |
| `chromeOtherPssKb` | {'int': 234} |
| `chromeProcesses` | {'int': 234} |
| `chromeProfiles` | {'int': 234} |
| `chromeRendererMaxPssKb` | {'int': 234} |
| `chromeRendererPssKb` | {'int': 234} |
| `chromeRenderers` | {'int': 234} |
| `chromeTabs` | {'int': 234} |
| `chromeTabsProbedProfiles` | {'int': 234} |
| `chromeUtilityPssKb` | {'int': 234} |
| `desktopPssKb` | {'int': 234} |
| `hostPssKb` | {'int': 234} |
| `kind` | {'str': 234} |
| `memAvailableKb` | {'int': 234} |
| `memTotalKb` | {'int': 234} |
| `otherPssKb` | {'int': 234} |
| `processes` | {'int': 234} |
| `pssFallbackProcesses` | {'int': 234} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
