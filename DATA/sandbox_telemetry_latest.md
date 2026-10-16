# sandbox_telemetry_parse — 2026-10-16 18:26:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=717063 lines=2680
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1774 |
| `memory_sample` | 897 |
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
| `chromeBrowserPssKb` | {'int': 897} |
| `chromeGpuPssKb` | {'int': 897} |
| `chromeOtherPssKb` | {'int': 897} |
| `chromeProcesses` | {'int': 897} |
| `chromeProfiles` | {'int': 897} |
| `chromeRendererMaxPssKb` | {'int': 897} |
| `chromeRendererPssKb` | {'int': 897} |
| `chromeRenderers` | {'int': 897} |
| `chromeTabs` | {'int': 897} |
| `chromeTabsProbedProfiles` | {'int': 897} |
| `chromeUtilityPssKb` | {'int': 897} |
| `desktopPssKb` | {'int': 897} |
| `hostPssKb` | {'int': 897} |
| `kind` | {'str': 897} |
| `memAvailableKb` | {'int': 897} |
| `memTotalKb` | {'int': 897} |
| `otherPssKb` | {'int': 897} |
| `processes` | {'int': 897} |
| `pssFallbackProcesses` | {'int': 897} |

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
| `cpuMillicores` | {'int': 1771} |
| `display` | {'int': 1774} |
| `kind` | {'str': 1774} |
| `processes` | {'int': 1774} |
| `pssKb` | {'int': 1774} |
| `rendererMaxPssKb` | {'int': 1774} |
| `renderers` | {'int': 1774} |
| `tabs` | {'int': 1773} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
