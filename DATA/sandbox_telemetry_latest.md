# sandbox_telemetry_parse — 2026-10-15 05:06:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=678822 lines=1506
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1501 |
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
| `chromeBrowserPssKb` | {'int': 1501} |
| `chromeGpuPssKb` | {'int': 1501} |
| `chromeOtherPssKb` | {'int': 1501} |
| `chromeProcesses` | {'int': 1501} |
| `chromeProfiles` | {'int': 1501} |
| `chromeRendererMaxPssKb` | {'int': 1501} |
| `chromeRendererPssKb` | {'int': 1501} |
| `chromeRenderers` | {'int': 1501} |
| `chromeTabs` | {'int': 1501} |
| `chromeTabsProbedProfiles` | {'int': 1501} |
| `chromeUtilityPssKb` | {'int': 1501} |
| `desktopPssKb` | {'int': 1501} |
| `hostPssKb` | {'int': 1501} |
| `kind` | {'str': 1501} |
| `memAvailableKb` | {'int': 1501} |
| `memTotalKb` | {'int': 1501} |
| `otherPssKb` | {'int': 1501} |
| `processes` | {'int': 1501} |
| `pssFallbackProcesses` | {'int': 1501} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
