# sandbox_telemetry_parse — 2026-10-06 10:06:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=305258 lines=674
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 669 |
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
| `chromeBrowserPssKb` | {'int': 669} |
| `chromeGpuPssKb` | {'int': 669} |
| `chromeOtherPssKb` | {'int': 669} |
| `chromeProcesses` | {'int': 669} |
| `chromeProfiles` | {'int': 669} |
| `chromeRendererMaxPssKb` | {'int': 669} |
| `chromeRendererPssKb` | {'int': 669} |
| `chromeRenderers` | {'int': 669} |
| `chromeTabs` | {'int': 669} |
| `chromeTabsProbedProfiles` | {'int': 669} |
| `chromeUtilityPssKb` | {'int': 669} |
| `desktopPssKb` | {'int': 669} |
| `hostPssKb` | {'int': 669} |
| `kind` | {'str': 669} |
| `memAvailableKb` | {'int': 669} |
| `memTotalKb` | {'int': 669} |
| `otherPssKb` | {'int': 669} |
| `processes` | {'int': 669} |
| `pssFallbackProcesses` | {'int': 669} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
