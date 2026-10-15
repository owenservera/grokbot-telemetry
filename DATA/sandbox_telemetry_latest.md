# sandbox_telemetry_parse — 2026-10-15 19:14:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1009686 lines=2238
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2233 |
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
| `chromeBrowserPssKb` | {'int': 2233} |
| `chromeGpuPssKb` | {'int': 2233} |
| `chromeOtherPssKb` | {'int': 2233} |
| `chromeProcesses` | {'int': 2233} |
| `chromeProfiles` | {'int': 2233} |
| `chromeRendererMaxPssKb` | {'int': 2233} |
| `chromeRendererPssKb` | {'int': 2233} |
| `chromeRenderers` | {'int': 2233} |
| `chromeTabs` | {'int': 2233} |
| `chromeTabsProbedProfiles` | {'int': 2233} |
| `chromeUtilityPssKb` | {'int': 2233} |
| `desktopPssKb` | {'int': 2233} |
| `hostPssKb` | {'int': 2233} |
| `kind` | {'str': 2233} |
| `memAvailableKb` | {'int': 2233} |
| `memTotalKb` | {'int': 2233} |
| `otherPssKb` | {'int': 2233} |
| `processes` | {'int': 2233} |
| `pssFallbackProcesses` | {'int': 2233} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
