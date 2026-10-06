# sandbox_telemetry_parse — 2026-10-06 04:19:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=147938 lines=329
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 324 |
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
| `chromeBrowserPssKb` | {'int': 324} |
| `chromeGpuPssKb` | {'int': 324} |
| `chromeOtherPssKb` | {'int': 324} |
| `chromeProcesses` | {'int': 324} |
| `chromeProfiles` | {'int': 324} |
| `chromeRendererMaxPssKb` | {'int': 324} |
| `chromeRendererPssKb` | {'int': 324} |
| `chromeRenderers` | {'int': 324} |
| `chromeTabs` | {'int': 324} |
| `chromeTabsProbedProfiles` | {'int': 324} |
| `chromeUtilityPssKb` | {'int': 324} |
| `desktopPssKb` | {'int': 324} |
| `hostPssKb` | {'int': 324} |
| `kind` | {'str': 324} |
| `memAvailableKb` | {'int': 324} |
| `memTotalKb` | {'int': 324} |
| `otherPssKb` | {'int': 324} |
| `processes` | {'int': 324} |
| `pssFallbackProcesses` | {'int': 324} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
