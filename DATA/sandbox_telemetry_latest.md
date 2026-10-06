# sandbox_telemetry_parse — 2026-10-06 17:30:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=504530 lines=1111
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1106 |
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
| `chromeBrowserPssKb` | {'int': 1106} |
| `chromeGpuPssKb` | {'int': 1106} |
| `chromeOtherPssKb` | {'int': 1106} |
| `chromeProcesses` | {'int': 1106} |
| `chromeProfiles` | {'int': 1106} |
| `chromeRendererMaxPssKb` | {'int': 1106} |
| `chromeRendererPssKb` | {'int': 1106} |
| `chromeRenderers` | {'int': 1106} |
| `chromeTabs` | {'int': 1106} |
| `chromeTabsProbedProfiles` | {'int': 1106} |
| `chromeUtilityPssKb` | {'int': 1106} |
| `desktopPssKb` | {'int': 1106} |
| `hostPssKb` | {'int': 1106} |
| `kind` | {'str': 1106} |
| `memAvailableKb` | {'int': 1106} |
| `memTotalKb` | {'int': 1106} |
| `otherPssKb` | {'int': 1106} |
| `processes` | {'int': 1106} |
| `pssFallbackProcesses` | {'int': 1106} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
