# sandbox_telemetry_parse — 2026-10-06 21:18:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=608498 lines=1339
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1334 |
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
| `chromeBrowserPssKb` | {'int': 1334} |
| `chromeGpuPssKb` | {'int': 1334} |
| `chromeOtherPssKb` | {'int': 1334} |
| `chromeProcesses` | {'int': 1334} |
| `chromeProfiles` | {'int': 1334} |
| `chromeRendererMaxPssKb` | {'int': 1334} |
| `chromeRendererPssKb` | {'int': 1334} |
| `chromeRenderers` | {'int': 1334} |
| `chromeTabs` | {'int': 1334} |
| `chromeTabsProbedProfiles` | {'int': 1334} |
| `chromeUtilityPssKb` | {'int': 1334} |
| `desktopPssKb` | {'int': 1334} |
| `hostPssKb` | {'int': 1334} |
| `kind` | {'str': 1334} |
| `memAvailableKb` | {'int': 1334} |
| `memTotalKb` | {'int': 1334} |
| `otherPssKb` | {'int': 1334} |
| `processes` | {'int': 1334} |
| `pssFallbackProcesses` | {'int': 1334} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
