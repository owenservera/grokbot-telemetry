# sandbox_telemetry_parse — 2026-10-06 09:09:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=279266 lines=617
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 612 |
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
| `chromeBrowserPssKb` | {'int': 612} |
| `chromeGpuPssKb` | {'int': 612} |
| `chromeOtherPssKb` | {'int': 612} |
| `chromeProcesses` | {'int': 612} |
| `chromeProfiles` | {'int': 612} |
| `chromeRendererMaxPssKb` | {'int': 612} |
| `chromeRendererPssKb` | {'int': 612} |
| `chromeRenderers` | {'int': 612} |
| `chromeTabs` | {'int': 612} |
| `chromeTabsProbedProfiles` | {'int': 612} |
| `chromeUtilityPssKb` | {'int': 612} |
| `desktopPssKb` | {'int': 612} |
| `hostPssKb` | {'int': 612} |
| `kind` | {'str': 612} |
| `memAvailableKb` | {'int': 612} |
| `memTotalKb` | {'int': 612} |
| `otherPssKb` | {'int': 612} |
| `processes` | {'int': 612} |
| `pssFallbackProcesses` | {'int': 612} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
