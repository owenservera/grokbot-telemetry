# sandbox_telemetry_parse — 2026-10-15 07:17:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=732158 lines=1624
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1619 |
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
| `chromeBrowserPssKb` | {'int': 1619} |
| `chromeGpuPssKb` | {'int': 1619} |
| `chromeOtherPssKb` | {'int': 1619} |
| `chromeProcesses` | {'int': 1619} |
| `chromeProfiles` | {'int': 1619} |
| `chromeRendererMaxPssKb` | {'int': 1619} |
| `chromeRendererPssKb` | {'int': 1619} |
| `chromeRenderers` | {'int': 1619} |
| `chromeTabs` | {'int': 1619} |
| `chromeTabsProbedProfiles` | {'int': 1619} |
| `chromeUtilityPssKb` | {'int': 1619} |
| `desktopPssKb` | {'int': 1619} |
| `hostPssKb` | {'int': 1619} |
| `kind` | {'str': 1619} |
| `memAvailableKb` | {'int': 1619} |
| `memTotalKb` | {'int': 1619} |
| `otherPssKb` | {'int': 1619} |
| `processes` | {'int': 1619} |
| `pssFallbackProcesses` | {'int': 1619} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
