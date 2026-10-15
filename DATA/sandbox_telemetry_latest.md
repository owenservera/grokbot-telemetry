# sandbox_telemetry_parse — 2026-10-15 05:52:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=697354 lines=1547
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1542 |
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
| `chromeBrowserPssKb` | {'int': 1542} |
| `chromeGpuPssKb` | {'int': 1542} |
| `chromeOtherPssKb` | {'int': 1542} |
| `chromeProcesses` | {'int': 1542} |
| `chromeProfiles` | {'int': 1542} |
| `chromeRendererMaxPssKb` | {'int': 1542} |
| `chromeRendererPssKb` | {'int': 1542} |
| `chromeRenderers` | {'int': 1542} |
| `chromeTabs` | {'int': 1542} |
| `chromeTabsProbedProfiles` | {'int': 1542} |
| `chromeUtilityPssKb` | {'int': 1542} |
| `desktopPssKb` | {'int': 1542} |
| `hostPssKb` | {'int': 1542} |
| `kind` | {'str': 1542} |
| `memAvailableKb` | {'int': 1542} |
| `memTotalKb` | {'int': 1542} |
| `otherPssKb` | {'int': 1542} |
| `processes` | {'int': 1542} |
| `pssFallbackProcesses` | {'int': 1542} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
