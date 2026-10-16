# sandbox_telemetry_parse — 2026-10-16 05:37:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=145663 lines=544
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 350 |
| `memory_sample` | 185 |
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
| `chromeBrowserPssKb` | {'int': 185} |
| `chromeGpuPssKb` | {'int': 185} |
| `chromeOtherPssKb` | {'int': 185} |
| `chromeProcesses` | {'int': 185} |
| `chromeProfiles` | {'int': 185} |
| `chromeRendererMaxPssKb` | {'int': 185} |
| `chromeRendererPssKb` | {'int': 185} |
| `chromeRenderers` | {'int': 185} |
| `chromeTabs` | {'int': 185} |
| `chromeTabsProbedProfiles` | {'int': 185} |
| `chromeUtilityPssKb` | {'int': 185} |
| `desktopPssKb` | {'int': 185} |
| `hostPssKb` | {'int': 185} |
| `kind` | {'str': 185} |
| `memAvailableKb` | {'int': 185} |
| `memTotalKb` | {'int': 185} |
| `otherPssKb` | {'int': 185} |
| `processes` | {'int': 185} |
| `pssFallbackProcesses` | {'int': 185} |

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
| `cpuMillicores` | {'int': 347} |
| `display` | {'int': 350} |
| `kind` | {'str': 350} |
| `processes` | {'int': 350} |
| `pssKb` | {'int': 350} |
| `rendererMaxPssKb` | {'int': 350} |
| `renderers` | {'int': 350} |
| `tabs` | {'int': 349} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
