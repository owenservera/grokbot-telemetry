# sandbox_telemetry_parse — 2026-10-15 09:36:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=790014 lines=1752
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1747 |
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
| `chromeBrowserPssKb` | {'int': 1747} |
| `chromeGpuPssKb` | {'int': 1747} |
| `chromeOtherPssKb` | {'int': 1747} |
| `chromeProcesses` | {'int': 1747} |
| `chromeProfiles` | {'int': 1747} |
| `chromeRendererMaxPssKb` | {'int': 1747} |
| `chromeRendererPssKb` | {'int': 1747} |
| `chromeRenderers` | {'int': 1747} |
| `chromeTabs` | {'int': 1747} |
| `chromeTabsProbedProfiles` | {'int': 1747} |
| `chromeUtilityPssKb` | {'int': 1747} |
| `desktopPssKb` | {'int': 1747} |
| `hostPssKb` | {'int': 1747} |
| `kind` | {'str': 1747} |
| `memAvailableKb` | {'int': 1747} |
| `memTotalKb` | {'int': 1747} |
| `otherPssKb` | {'int': 1747} |
| `processes` | {'int': 1747} |
| `pssFallbackProcesses` | {'int': 1747} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
