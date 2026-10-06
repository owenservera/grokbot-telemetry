# sandbox_telemetry_parse — 2026-10-06 05:16:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=173474 lines=385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 380 |
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
| `chromeBrowserPssKb` | {'int': 380} |
| `chromeGpuPssKb` | {'int': 380} |
| `chromeOtherPssKb` | {'int': 380} |
| `chromeProcesses` | {'int': 380} |
| `chromeProfiles` | {'int': 380} |
| `chromeRendererMaxPssKb` | {'int': 380} |
| `chromeRendererPssKb` | {'int': 380} |
| `chromeRenderers` | {'int': 380} |
| `chromeTabs` | {'int': 380} |
| `chromeTabsProbedProfiles` | {'int': 380} |
| `chromeUtilityPssKb` | {'int': 380} |
| `desktopPssKb` | {'int': 380} |
| `hostPssKb` | {'int': 380} |
| `kind` | {'str': 380} |
| `memAvailableKb` | {'int': 380} |
| `memTotalKb` | {'int': 380} |
| `otherPssKb` | {'int': 380} |
| `processes` | {'int': 380} |
| `pssFallbackProcesses` | {'int': 380} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
