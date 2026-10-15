# sandbox_telemetry_parse — 2026-10-15 19:48:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1023698 lines=2269
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2264 |
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
| `chromeBrowserPssKb` | {'int': 2264} |
| `chromeGpuPssKb` | {'int': 2264} |
| `chromeOtherPssKb` | {'int': 2264} |
| `chromeProcesses` | {'int': 2264} |
| `chromeProfiles` | {'int': 2264} |
| `chromeRendererMaxPssKb` | {'int': 2264} |
| `chromeRendererPssKb` | {'int': 2264} |
| `chromeRenderers` | {'int': 2264} |
| `chromeTabs` | {'int': 2264} |
| `chromeTabsProbedProfiles` | {'int': 2264} |
| `chromeUtilityPssKb` | {'int': 2264} |
| `desktopPssKb` | {'int': 2264} |
| `hostPssKb` | {'int': 2264} |
| `kind` | {'str': 2264} |
| `memAvailableKb` | {'int': 2264} |
| `memTotalKb` | {'int': 2264} |
| `otherPssKb` | {'int': 2264} |
| `processes` | {'int': 2264} |
| `pssFallbackProcesses` | {'int': 2264} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
