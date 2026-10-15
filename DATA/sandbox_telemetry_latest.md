# sandbox_telemetry_parse — 2026-10-15 10:40:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=816230 lines=1810
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1805 |
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
| `chromeBrowserPssKb` | {'int': 1805} |
| `chromeGpuPssKb` | {'int': 1805} |
| `chromeOtherPssKb` | {'int': 1805} |
| `chromeProcesses` | {'int': 1805} |
| `chromeProfiles` | {'int': 1805} |
| `chromeRendererMaxPssKb` | {'int': 1805} |
| `chromeRendererPssKb` | {'int': 1805} |
| `chromeRenderers` | {'int': 1805} |
| `chromeTabs` | {'int': 1805} |
| `chromeTabsProbedProfiles` | {'int': 1805} |
| `chromeUtilityPssKb` | {'int': 1805} |
| `desktopPssKb` | {'int': 1805} |
| `hostPssKb` | {'int': 1805} |
| `kind` | {'str': 1805} |
| `memAvailableKb` | {'int': 1805} |
| `memTotalKb` | {'int': 1805} |
| `otherPssKb` | {'int': 1805} |
| `processes` | {'int': 1805} |
| `pssFallbackProcesses` | {'int': 1805} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
