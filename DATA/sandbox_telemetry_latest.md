# sandbox_telemetry_parse — 2026-10-07 10:21:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=960709 lines=2111
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2106 |
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
| `chromeBrowserPssKb` | {'int': 2106} |
| `chromeGpuPssKb` | {'int': 2106} |
| `chromeOtherPssKb` | {'int': 2106} |
| `chromeProcesses` | {'int': 2106} |
| `chromeProfiles` | {'int': 2106} |
| `chromeRendererMaxPssKb` | {'int': 2106} |
| `chromeRendererPssKb` | {'int': 2106} |
| `chromeRenderers` | {'int': 2106} |
| `chromeTabs` | {'int': 2106} |
| `chromeTabsProbedProfiles` | {'int': 2106} |
| `chromeUtilityPssKb` | {'int': 2106} |
| `desktopPssKb` | {'int': 2106} |
| `hostPssKb` | {'int': 2106} |
| `kind` | {'str': 2106} |
| `memAvailableKb` | {'int': 2106} |
| `memTotalKb` | {'int': 2106} |
| `otherPssKb` | {'int': 2106} |
| `processes` | {'int': 2106} |
| `pssFallbackProcesses` | {'int': 2106} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
