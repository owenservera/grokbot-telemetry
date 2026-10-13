# sandbox_telemetry_parse — 2026-10-14 01:08:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=12574 lines=32
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 27 |
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
| `chromeBrowserPssKb` | {'int': 27} |
| `chromeGpuPssKb` | {'int': 27} |
| `chromeOtherPssKb` | {'int': 27} |
| `chromeProcesses` | {'int': 27} |
| `chromeProfiles` | {'int': 27} |
| `chromeRendererMaxPssKb` | {'int': 27} |
| `chromeRendererPssKb` | {'int': 27} |
| `chromeRenderers` | {'int': 27} |
| `chromeTabs` | {'int': 27} |
| `chromeTabsProbedProfiles` | {'int': 27} |
| `chromeUtilityPssKb` | {'int': 27} |
| `desktopPssKb` | {'int': 27} |
| `hostPssKb` | {'int': 27} |
| `kind` | {'str': 27} |
| `memAvailableKb` | {'int': 27} |
| `memTotalKb` | {'int': 27} |
| `otherPssKb` | {'int': 27} |
| `processes` | {'int': 27} |
| `pssFallbackProcesses` | {'int': 27} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
