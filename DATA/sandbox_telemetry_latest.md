# sandbox_telemetry_parse — 2026-10-13 11:41:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1050897 lines=2661
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2096 |
| `chrome_profile_sample` | 557 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2096} |
| `chromeGpuPssKb` | {'int': 2096} |
| `chromeOtherPssKb` | {'int': 2096} |
| `chromeProcesses` | {'int': 2096} |
| `chromeProfiles` | {'int': 2096} |
| `chromeRendererMaxPssKb` | {'int': 2096} |
| `chromeRendererPssKb` | {'int': 2096} |
| `chromeRenderers` | {'int': 2096} |
| `chromeTabs` | {'int': 2096} |
| `chromeTabsProbedProfiles` | {'int': 2096} |
| `chromeUtilityPssKb` | {'int': 2096} |
| `desktopPssKb` | {'int': 2096} |
| `hostPssKb` | {'int': 2096} |
| `kind` | {'str': 2096} |
| `memAvailableKb` | {'int': 2096} |
| `memTotalKb` | {'int': 2096} |
| `otherPssKb` | {'int': 2096} |
| `processes` | {'int': 2096} |
| `pssFallbackProcesses` | {'int': 2096} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 556} |
| `display` | {'int': 557} |
| `kind` | {'str': 557} |
| `processes` | {'int': 557} |
| `pssKb` | {'int': 557} |
| `rendererMaxPssKb` | {'int': 557} |
| `renderers` | {'int': 557} |
| `tabs` | {'int': 557} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
