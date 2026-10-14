# sandbox_telemetry_parse — 2026-10-14 11:28:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=259366 lines=578
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 573 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 573} |
| `chromeGpuPssKb` | {'int': 573} |
| `chromeOtherPssKb` | {'int': 573} |
| `chromeProcesses` | {'int': 573} |
| `chromeProfiles` | {'int': 573} |
| `chromeRendererMaxPssKb` | {'int': 573} |
| `chromeRendererPssKb` | {'int': 573} |
| `chromeRenderers` | {'int': 573} |
| `chromeTabs` | {'int': 573} |
| `chromeTabsProbedProfiles` | {'int': 573} |
| `chromeUtilityPssKb` | {'int': 573} |
| `desktopPssKb` | {'int': 573} |
| `hostPssKb` | {'int': 573} |
| `kind` | {'str': 573} |
| `memAvailableKb` | {'int': 573} |
| `memTotalKb` | {'int': 573} |
| `otherPssKb` | {'int': 573} |
| `processes` | {'int': 573} |
| `pssFallbackProcesses` | {'int': 573} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
