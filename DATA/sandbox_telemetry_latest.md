# sandbox_telemetry_parse — 2026-10-07 02:09:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=739947 lines=1627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1622 |
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
| `chromeBrowserPssKb` | {'int': 1622} |
| `chromeGpuPssKb` | {'int': 1622} |
| `chromeOtherPssKb` | {'int': 1622} |
| `chromeProcesses` | {'int': 1622} |
| `chromeProfiles` | {'int': 1622} |
| `chromeRendererMaxPssKb` | {'int': 1622} |
| `chromeRendererPssKb` | {'int': 1622} |
| `chromeRenderers` | {'int': 1622} |
| `chromeTabs` | {'int': 1622} |
| `chromeTabsProbedProfiles` | {'int': 1622} |
| `chromeUtilityPssKb` | {'int': 1622} |
| `desktopPssKb` | {'int': 1622} |
| `hostPssKb` | {'int': 1622} |
| `kind` | {'str': 1622} |
| `memAvailableKb` | {'int': 1622} |
| `memTotalKb` | {'int': 1622} |
| `otherPssKb` | {'int': 1622} |
| `processes` | {'int': 1622} |
| `pssFallbackProcesses` | {'int': 1622} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
