# sandbox_telemetry_parse — 2026-10-06 13:15:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=389618 lines=859
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 854 |
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
| `chromeBrowserPssKb` | {'int': 854} |
| `chromeGpuPssKb` | {'int': 854} |
| `chromeOtherPssKb` | {'int': 854} |
| `chromeProcesses` | {'int': 854} |
| `chromeProfiles` | {'int': 854} |
| `chromeRendererMaxPssKb` | {'int': 854} |
| `chromeRendererPssKb` | {'int': 854} |
| `chromeRenderers` | {'int': 854} |
| `chromeTabs` | {'int': 854} |
| `chromeTabsProbedProfiles` | {'int': 854} |
| `chromeUtilityPssKb` | {'int': 854} |
| `desktopPssKb` | {'int': 854} |
| `hostPssKb` | {'int': 854} |
| `kind` | {'str': 854} |
| `memAvailableKb` | {'int': 854} |
| `memTotalKb` | {'int': 854} |
| `otherPssKb` | {'int': 854} |
| `processes` | {'int': 854} |
| `pssFallbackProcesses` | {'int': 854} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
