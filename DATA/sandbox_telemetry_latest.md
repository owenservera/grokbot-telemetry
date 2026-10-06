# sandbox_telemetry_parse — 2026-10-06 08:12:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=253274 lines=560
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 555 |
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
| `chromeBrowserPssKb` | {'int': 555} |
| `chromeGpuPssKb` | {'int': 555} |
| `chromeOtherPssKb` | {'int': 555} |
| `chromeProcesses` | {'int': 555} |
| `chromeProfiles` | {'int': 555} |
| `chromeRendererMaxPssKb` | {'int': 555} |
| `chromeRendererPssKb` | {'int': 555} |
| `chromeRenderers` | {'int': 555} |
| `chromeTabs` | {'int': 555} |
| `chromeTabsProbedProfiles` | {'int': 555} |
| `chromeUtilityPssKb` | {'int': 555} |
| `desktopPssKb` | {'int': 555} |
| `hostPssKb` | {'int': 555} |
| `kind` | {'str': 555} |
| `memAvailableKb` | {'int': 555} |
| `memTotalKb` | {'int': 555} |
| `otherPssKb` | {'int': 555} |
| `processes` | {'int': 555} |
| `pssFallbackProcesses` | {'int': 555} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
