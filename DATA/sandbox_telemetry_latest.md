# sandbox_telemetry_parse — 2026-10-26 23:58:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=213744 lines=476
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 471 |
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
| `chromeBrowserPssKb` | {'int': 471} |
| `chromeGpuPssKb` | {'int': 471} |
| `chromeOtherPssKb` | {'int': 471} |
| `chromeProcesses` | {'int': 471} |
| `chromeProfiles` | {'int': 471} |
| `chromeRendererMaxPssKb` | {'int': 471} |
| `chromeRendererPssKb` | {'int': 471} |
| `chromeRenderers` | {'int': 471} |
| `chromeTabs` | {'int': 471} |
| `chromeTabsProbedProfiles` | {'int': 471} |
| `chromeUtilityPssKb` | {'int': 471} |
| `desktopPssKb` | {'int': 471} |
| `hostPssKb` | {'int': 471} |
| `kind` | {'str': 471} |
| `memAvailableKb` | {'int': 471} |
| `memTotalKb` | {'int': 471} |
| `otherPssKb` | {'int': 471} |
| `processes` | {'int': 471} |
| `pssFallbackProcesses` | {'int': 471} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
