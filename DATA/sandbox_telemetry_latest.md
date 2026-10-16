# sandbox_telemetry_parse — 2026-10-16 16:44:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=639174 lines=2389
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1580 |
| `memory_sample` | 800 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 800} |
| `chromeGpuPssKb` | {'int': 800} |
| `chromeOtherPssKb` | {'int': 800} |
| `chromeProcesses` | {'int': 800} |
| `chromeProfiles` | {'int': 800} |
| `chromeRendererMaxPssKb` | {'int': 800} |
| `chromeRendererPssKb` | {'int': 800} |
| `chromeRenderers` | {'int': 800} |
| `chromeTabs` | {'int': 800} |
| `chromeTabsProbedProfiles` | {'int': 800} |
| `chromeUtilityPssKb` | {'int': 800} |
| `desktopPssKb` | {'int': 800} |
| `hostPssKb` | {'int': 800} |
| `kind` | {'str': 800} |
| `memAvailableKb` | {'int': 800} |
| `memTotalKb` | {'int': 800} |
| `otherPssKb` | {'int': 800} |
| `processes` | {'int': 800} |
| `pssFallbackProcesses` | {'int': 800} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 1577} |
| `display` | {'int': 1580} |
| `kind` | {'str': 1580} |
| `processes` | {'int': 1580} |
| `pssKb` | {'int': 1580} |
| `rendererMaxPssKb` | {'int': 1580} |
| `renderers` | {'int': 1580} |
| `tabs` | {'int': 1579} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
