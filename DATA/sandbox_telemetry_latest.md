# sandbox_telemetry_parse — 2026-10-06 06:44:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=213602 lines=473
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 468 |
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
| `chromeBrowserPssKb` | {'int': 468} |
| `chromeGpuPssKb` | {'int': 468} |
| `chromeOtherPssKb` | {'int': 468} |
| `chromeProcesses` | {'int': 468} |
| `chromeProfiles` | {'int': 468} |
| `chromeRendererMaxPssKb` | {'int': 468} |
| `chromeRendererPssKb` | {'int': 468} |
| `chromeRenderers` | {'int': 468} |
| `chromeTabs` | {'int': 468} |
| `chromeTabsProbedProfiles` | {'int': 468} |
| `chromeUtilityPssKb` | {'int': 468} |
| `desktopPssKb` | {'int': 468} |
| `hostPssKb` | {'int': 468} |
| `kind` | {'str': 468} |
| `memAvailableKb` | {'int': 468} |
| `memTotalKb` | {'int': 468} |
| `otherPssKb` | {'int': 468} |
| `processes` | {'int': 468} |
| `pssFallbackProcesses` | {'int': 468} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
