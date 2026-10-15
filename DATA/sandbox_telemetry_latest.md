# sandbox_telemetry_parse — 2026-10-15 09:57:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=799054 lines=1772
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1767 |
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
| `chromeBrowserPssKb` | {'int': 1767} |
| `chromeGpuPssKb` | {'int': 1767} |
| `chromeOtherPssKb` | {'int': 1767} |
| `chromeProcesses` | {'int': 1767} |
| `chromeProfiles` | {'int': 1767} |
| `chromeRendererMaxPssKb` | {'int': 1767} |
| `chromeRendererPssKb` | {'int': 1767} |
| `chromeRenderers` | {'int': 1767} |
| `chromeTabs` | {'int': 1767} |
| `chromeTabsProbedProfiles` | {'int': 1767} |
| `chromeUtilityPssKb` | {'int': 1767} |
| `desktopPssKb` | {'int': 1767} |
| `hostPssKb` | {'int': 1767} |
| `kind` | {'str': 1767} |
| `memAvailableKb` | {'int': 1767} |
| `memTotalKb` | {'int': 1767} |
| `otherPssKb` | {'int': 1767} |
| `processes` | {'int': 1767} |
| `pssFallbackProcesses` | {'int': 1767} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
