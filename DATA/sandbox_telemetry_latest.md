# sandbox_telemetry_parse — 2026-10-13 16:18:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1155607 lines=2989
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2260 |
| `chrome_profile_sample` | 721 |
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
| `chromeBrowserPssKb` | {'int': 2260} |
| `chromeGpuPssKb` | {'int': 2260} |
| `chromeOtherPssKb` | {'int': 2260} |
| `chromeProcesses` | {'int': 2260} |
| `chromeProfiles` | {'int': 2260} |
| `chromeRendererMaxPssKb` | {'int': 2260} |
| `chromeRendererPssKb` | {'int': 2260} |
| `chromeRenderers` | {'int': 2260} |
| `chromeTabs` | {'int': 2260} |
| `chromeTabsProbedProfiles` | {'int': 2260} |
| `chromeUtilityPssKb` | {'int': 2260} |
| `desktopPssKb` | {'int': 2260} |
| `hostPssKb` | {'int': 2260} |
| `kind` | {'str': 2260} |
| `memAvailableKb` | {'int': 2260} |
| `memTotalKb` | {'int': 2260} |
| `otherPssKb` | {'int': 2260} |
| `processes` | {'int': 2260} |
| `pssFallbackProcesses` | {'int': 2260} |

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
| `cpuMillicores` | {'int': 720} |
| `display` | {'int': 721} |
| `kind` | {'str': 721} |
| `processes` | {'int': 721} |
| `pssKb` | {'int': 721} |
| `rendererMaxPssKb` | {'int': 721} |
| `renderers` | {'int': 721} |
| `tabs` | {'int': 721} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
