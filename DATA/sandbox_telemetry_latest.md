# sandbox_telemetry_parse — 2026-10-07 12:45:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1026373 lines=2255
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2250 |
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
| `chromeBrowserPssKb` | {'int': 2250} |
| `chromeGpuPssKb` | {'int': 2250} |
| `chromeOtherPssKb` | {'int': 2250} |
| `chromeProcesses` | {'int': 2250} |
| `chromeProfiles` | {'int': 2250} |
| `chromeRendererMaxPssKb` | {'int': 2250} |
| `chromeRendererPssKb` | {'int': 2250} |
| `chromeRenderers` | {'int': 2250} |
| `chromeTabs` | {'int': 2250} |
| `chromeTabsProbedProfiles` | {'int': 2250} |
| `chromeUtilityPssKb` | {'int': 2250} |
| `desktopPssKb` | {'int': 2250} |
| `hostPssKb` | {'int': 2250} |
| `kind` | {'str': 2250} |
| `memAvailableKb` | {'int': 2250} |
| `memTotalKb` | {'int': 2250} |
| `otherPssKb` | {'int': 2250} |
| `processes` | {'int': 2250} |
| `pssFallbackProcesses` | {'int': 2250} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
