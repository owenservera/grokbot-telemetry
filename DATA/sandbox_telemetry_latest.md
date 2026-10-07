# sandbox_telemetry_parse — 2026-10-07 11:23:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=988981 lines=2173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2168 |
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
| `chromeBrowserPssKb` | {'int': 2168} |
| `chromeGpuPssKb` | {'int': 2168} |
| `chromeOtherPssKb` | {'int': 2168} |
| `chromeProcesses` | {'int': 2168} |
| `chromeProfiles` | {'int': 2168} |
| `chromeRendererMaxPssKb` | {'int': 2168} |
| `chromeRendererPssKb` | {'int': 2168} |
| `chromeRenderers` | {'int': 2168} |
| `chromeTabs` | {'int': 2168} |
| `chromeTabsProbedProfiles` | {'int': 2168} |
| `chromeUtilityPssKb` | {'int': 2168} |
| `desktopPssKb` | {'int': 2168} |
| `hostPssKb` | {'int': 2168} |
| `kind` | {'str': 2168} |
| `memAvailableKb` | {'int': 2168} |
| `memTotalKb` | {'int': 2168} |
| `otherPssKb` | {'int': 2168} |
| `processes` | {'int': 2168} |
| `pssFallbackProcesses` | {'int': 2168} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
