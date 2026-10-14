# sandbox_telemetry_parse — 2026-10-14 12:15:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=280158 lines=624
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 619 |
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
| `chromeBrowserPssKb` | {'int': 619} |
| `chromeGpuPssKb` | {'int': 619} |
| `chromeOtherPssKb` | {'int': 619} |
| `chromeProcesses` | {'int': 619} |
| `chromeProfiles` | {'int': 619} |
| `chromeRendererMaxPssKb` | {'int': 619} |
| `chromeRendererPssKb` | {'int': 619} |
| `chromeRenderers` | {'int': 619} |
| `chromeTabs` | {'int': 619} |
| `chromeTabsProbedProfiles` | {'int': 619} |
| `chromeUtilityPssKb` | {'int': 619} |
| `desktopPssKb` | {'int': 619} |
| `hostPssKb` | {'int': 619} |
| `kind` | {'str': 619} |
| `memAvailableKb` | {'int': 619} |
| `memTotalKb` | {'int': 619} |
| `otherPssKb` | {'int': 619} |
| `processes` | {'int': 619} |
| `pssFallbackProcesses` | {'int': 619} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
